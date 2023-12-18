require "rails_helper"

RSpec.describe KickerTool::ProcessExportAssetService, type: :service do
  describe "basic usage" do
    let(:export) { create(:kicker_tool_export) }
    let(:options) { {} }
    let(:attributes) { {export: export} }

    subject { described_class.new(attributes, options) }

    describe "result" do
      subject { super().perform }

      it { expect(subject).to be_a(Rao::Service::Result::Base) }
      it { expect(subject).to be_ok }
      it { expect(subject.errors.full_messages).to match_array([]) }

      describe "tournament" do
        it { expect(subject.tournament).to be_a(KickerTool::Tournament) }

        describe "options" do
          it { expect(subject.tournament.options).to be_a(KickerTool::Options) }
        end

        describe "qualifying" do
          it { expect(subject.tournament.qualifying).to be_a(Array) }
          it { expect(subject.tournament.qualifying.size).to eq(1) }
          it { expect(subject.tournament.qualifying.first).to be_a(KickerTool::Qualifying) }

          describe "participants" do
            it { expect(subject.tournament.qualifying.first.participants).to be_a(Array) }
            it { expect(subject.tournament.qualifying.first.participants.size).to eq(21) }
            it { expect(subject.tournament.qualifying.first.participants.first).to be_a(KickerTool::Participant) }
          end

          describe "rounds" do
            it { expect(subject.tournament.qualifying.first.rounds).to be_a(Array) }
            it { expect(subject.tournament.qualifying.first.rounds.size).to eq(8) }
            it { expect(subject.tournament.qualifying.first.rounds.first).to be_a(KickerTool::Round) }

            describe "matches" do
              it { expect(subject.tournament.qualifying.first.rounds.first.matches).to be_a(Array) }
              it { expect(subject.tournament.qualifying.first.rounds.first.matches.size).to eq(5) }

              describe "disciplines" do
                it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.disciplines).to be_a(Array) }
                it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.disciplines.size).to eq(1) }
                it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.disciplines.first).to be_a(KickerTool::Discipline) }

                describe "sets" do
                  it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.disciplines.first.sets).to be_a(Array) }
                  it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.disciplines.first.sets.size).to eq(1) }
                  it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.disciplines.first.sets.first).to be_a(KickerTool::Set) }
                end
              end

              describe "team1" do
                it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.team1).to be_a(KickerTool::Team) }

                describe "players" do
                  it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.team1.players).to be_a(Array) }
                  it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.team1.players.size).to eq(2) }
                  it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.team1.players.first).to be_a(KickerTool::Player) }
                end
              end

              describe "team2" do
                it { expect(subject.tournament.qualifying.first.rounds.first.matches.first.team2).to be_a(KickerTool::Team) }
              end
            end
          end

          describe "standings" do
            it { expect(subject.tournament.qualifying.first.standings).to be_a(Array) }
            it { expect(subject.tournament.qualifying.first.standings.size).to eq(21) }
            it { expect(subject.tournament.qualifying.first.standings.first).to be_a(KickerTool::Standing) }

            describe "stats" do
              it { expect(subject.tournament.qualifying.first.standings.first.stats).to be_a(KickerTool::Stats) }
            end
          end
        end
      end
    end
  end
end
